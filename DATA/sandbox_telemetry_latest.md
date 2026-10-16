# sandbox_telemetry_parse — 2026-10-16 21:44:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=853577 lines=3190
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2114 |
| `memory_sample` | 1067 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1067} |
| `chromeGpuPssKb` | {'int': 1067} |
| `chromeOtherPssKb` | {'int': 1067} |
| `chromeProcesses` | {'int': 1067} |
| `chromeProfiles` | {'int': 1067} |
| `chromeRendererMaxPssKb` | {'int': 1067} |
| `chromeRendererPssKb` | {'int': 1067} |
| `chromeRenderers` | {'int': 1067} |
| `chromeTabs` | {'int': 1067} |
| `chromeTabsProbedProfiles` | {'int': 1067} |
| `chromeUtilityPssKb` | {'int': 1067} |
| `desktopPssKb` | {'int': 1067} |
| `hostPssKb` | {'int': 1067} |
| `kind` | {'str': 1067} |
| `memAvailableKb` | {'int': 1067} |
| `memTotalKb` | {'int': 1067} |
| `otherPssKb` | {'int': 1067} |
| `processes` | {'int': 1067} |
| `pssFallbackProcesses` | {'int': 1067} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 2111} |
| `display` | {'int': 2114} |
| `kind` | {'str': 2114} |
| `processes` | {'int': 2114} |
| `pssKb` | {'int': 2114} |
| `rendererMaxPssKb` | {'int': 2114} |
| `renderers` | {'int': 2114} |
| `tabs` | {'int': 2113} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

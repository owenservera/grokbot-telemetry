# sandbox_telemetry_parse — 2026-10-16 05:24:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=135231 lines=505
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 324 |
| `memory_sample` | 172 |
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
| `chromeBrowserPssKb` | {'int': 172} |
| `chromeGpuPssKb` | {'int': 172} |
| `chromeOtherPssKb` | {'int': 172} |
| `chromeProcesses` | {'int': 172} |
| `chromeProfiles` | {'int': 172} |
| `chromeRendererMaxPssKb` | {'int': 172} |
| `chromeRendererPssKb` | {'int': 172} |
| `chromeRenderers` | {'int': 172} |
| `chromeTabs` | {'int': 172} |
| `chromeTabsProbedProfiles` | {'int': 172} |
| `chromeUtilityPssKb` | {'int': 172} |
| `desktopPssKb` | {'int': 172} |
| `hostPssKb` | {'int': 172} |
| `kind` | {'str': 172} |
| `memAvailableKb` | {'int': 172} |
| `memTotalKb` | {'int': 172} |
| `otherPssKb` | {'int': 172} |
| `processes` | {'int': 172} |
| `pssFallbackProcesses` | {'int': 172} |

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
| `cpuMillicores` | {'int': 321} |
| `display` | {'int': 324} |
| `kind` | {'str': 324} |
| `processes` | {'int': 324} |
| `pssKb` | {'int': 324} |
| `rendererMaxPssKb` | {'int': 324} |
| `renderers` | {'int': 324} |
| `tabs` | {'int': 323} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

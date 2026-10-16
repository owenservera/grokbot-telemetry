# sandbox_telemetry_parse — 2026-10-16 04:30:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=91925 lines=343
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 216 |
| `memory_sample` | 118 |
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
| `chromeBrowserPssKb` | {'int': 118} |
| `chromeGpuPssKb` | {'int': 118} |
| `chromeOtherPssKb` | {'int': 118} |
| `chromeProcesses` | {'int': 118} |
| `chromeProfiles` | {'int': 118} |
| `chromeRendererMaxPssKb` | {'int': 118} |
| `chromeRendererPssKb` | {'int': 118} |
| `chromeRenderers` | {'int': 118} |
| `chromeTabs` | {'int': 118} |
| `chromeTabsProbedProfiles` | {'int': 118} |
| `chromeUtilityPssKb` | {'int': 118} |
| `desktopPssKb` | {'int': 118} |
| `hostPssKb` | {'int': 118} |
| `kind` | {'str': 118} |
| `memAvailableKb` | {'int': 118} |
| `memTotalKb` | {'int': 118} |
| `otherPssKb` | {'int': 118} |
| `processes` | {'int': 118} |
| `pssFallbackProcesses` | {'int': 118} |

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
| `cpuMillicores` | {'int': 213} |
| `display` | {'int': 216} |
| `kind` | {'str': 216} |
| `processes` | {'int': 216} |
| `pssKb` | {'int': 216} |
| `rendererMaxPssKb` | {'int': 216} |
| `renderers` | {'int': 216} |
| `tabs` | {'int': 215} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

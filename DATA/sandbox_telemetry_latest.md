# sandbox_telemetry_parse — 2026-10-16 06:08:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=170532 lines=637
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 412 |
| `memory_sample` | 216 |
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
| `chromeBrowserPssKb` | {'int': 216} |
| `chromeGpuPssKb` | {'int': 216} |
| `chromeOtherPssKb` | {'int': 216} |
| `chromeProcesses` | {'int': 216} |
| `chromeProfiles` | {'int': 216} |
| `chromeRendererMaxPssKb` | {'int': 216} |
| `chromeRendererPssKb` | {'int': 216} |
| `chromeRenderers` | {'int': 216} |
| `chromeTabs` | {'int': 216} |
| `chromeTabsProbedProfiles` | {'int': 216} |
| `chromeUtilityPssKb` | {'int': 216} |
| `desktopPssKb` | {'int': 216} |
| `hostPssKb` | {'int': 216} |
| `kind` | {'str': 216} |
| `memAvailableKb` | {'int': 216} |
| `memTotalKb` | {'int': 216} |
| `otherPssKb` | {'int': 216} |
| `processes` | {'int': 216} |
| `pssFallbackProcesses` | {'int': 216} |

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
| `cpuMillicores` | {'int': 409} |
| `display` | {'int': 412} |
| `kind` | {'str': 412} |
| `processes` | {'int': 412} |
| `pssKb` | {'int': 412} |
| `rendererMaxPssKb` | {'int': 412} |
| `renderers` | {'int': 412} |
| `tabs` | {'int': 411} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

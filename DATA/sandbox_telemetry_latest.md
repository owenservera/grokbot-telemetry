# sandbox_telemetry_parse — 2026-10-16 06:44:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=198598 lines=742
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 482 |
| `memory_sample` | 251 |
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
| `chromeBrowserPssKb` | {'int': 251} |
| `chromeGpuPssKb` | {'int': 251} |
| `chromeOtherPssKb` | {'int': 251} |
| `chromeProcesses` | {'int': 251} |
| `chromeProfiles` | {'int': 251} |
| `chromeRendererMaxPssKb` | {'int': 251} |
| `chromeRendererPssKb` | {'int': 251} |
| `chromeRenderers` | {'int': 251} |
| `chromeTabs` | {'int': 251} |
| `chromeTabsProbedProfiles` | {'int': 251} |
| `chromeUtilityPssKb` | {'int': 251} |
| `desktopPssKb` | {'int': 251} |
| `hostPssKb` | {'int': 251} |
| `kind` | {'str': 251} |
| `memAvailableKb` | {'int': 251} |
| `memTotalKb` | {'int': 251} |
| `otherPssKb` | {'int': 251} |
| `processes` | {'int': 251} |
| `pssFallbackProcesses` | {'int': 251} |

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
| `cpuMillicores` | {'int': 479} |
| `display` | {'int': 482} |
| `kind` | {'str': 482} |
| `processes` | {'int': 482} |
| `pssKb` | {'int': 482} |
| `rendererMaxPssKb` | {'int': 482} |
| `renderers` | {'int': 482} |
| `tabs` | {'int': 481} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

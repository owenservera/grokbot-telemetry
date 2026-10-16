# sandbox_telemetry_parse — 2026-10-16 04:44:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=103971 lines=388
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 246 |
| `memory_sample` | 133 |
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
| `chromeBrowserPssKb` | {'int': 133} |
| `chromeGpuPssKb` | {'int': 133} |
| `chromeOtherPssKb` | {'int': 133} |
| `chromeProcesses` | {'int': 133} |
| `chromeProfiles` | {'int': 133} |
| `chromeRendererMaxPssKb` | {'int': 133} |
| `chromeRendererPssKb` | {'int': 133} |
| `chromeRenderers` | {'int': 133} |
| `chromeTabs` | {'int': 133} |
| `chromeTabsProbedProfiles` | {'int': 133} |
| `chromeUtilityPssKb` | {'int': 133} |
| `desktopPssKb` | {'int': 133} |
| `hostPssKb` | {'int': 133} |
| `kind` | {'str': 133} |
| `memAvailableKb` | {'int': 133} |
| `memTotalKb` | {'int': 133} |
| `otherPssKb` | {'int': 133} |
| `processes` | {'int': 133} |
| `pssFallbackProcesses` | {'int': 133} |

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
| `cpuMillicores` | {'int': 243} |
| `display` | {'int': 246} |
| `kind` | {'str': 246} |
| `processes` | {'int': 246} |
| `pssKb` | {'int': 246} |
| `rendererMaxPssKb` | {'int': 246} |
| `renderers` | {'int': 246} |
| `tabs` | {'int': 245} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

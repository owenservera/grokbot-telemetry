# sandbox_telemetry_parse — 2026-10-16 05:31:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=140048 lines=523
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 336 |
| `memory_sample` | 178 |
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
| `chromeBrowserPssKb` | {'int': 178} |
| `chromeGpuPssKb` | {'int': 178} |
| `chromeOtherPssKb` | {'int': 178} |
| `chromeProcesses` | {'int': 178} |
| `chromeProfiles` | {'int': 178} |
| `chromeRendererMaxPssKb` | {'int': 178} |
| `chromeRendererPssKb` | {'int': 178} |
| `chromeRenderers` | {'int': 178} |
| `chromeTabs` | {'int': 178} |
| `chromeTabsProbedProfiles` | {'int': 178} |
| `chromeUtilityPssKb` | {'int': 178} |
| `desktopPssKb` | {'int': 178} |
| `hostPssKb` | {'int': 178} |
| `kind` | {'str': 178} |
| `memAvailableKb` | {'int': 178} |
| `memTotalKb` | {'int': 178} |
| `otherPssKb` | {'int': 178} |
| `processes` | {'int': 178} |
| `pssFallbackProcesses` | {'int': 178} |

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
| `cpuMillicores` | {'int': 333} |
| `display` | {'int': 336} |
| `kind` | {'str': 336} |
| `processes` | {'int': 336} |
| `pssKb` | {'int': 336} |
| `rendererMaxPssKb` | {'int': 336} |
| `renderers` | {'int': 336} |
| `tabs` | {'int': 335} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

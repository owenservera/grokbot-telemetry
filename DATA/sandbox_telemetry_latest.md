# sandbox_telemetry_parse — 2026-10-13 09:16:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=975765 lines=2425
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1978 |
| `chrome_profile_sample` | 439 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1978} |
| `chromeGpuPssKb` | {'int': 1978} |
| `chromeOtherPssKb` | {'int': 1978} |
| `chromeProcesses` | {'int': 1978} |
| `chromeProfiles` | {'int': 1978} |
| `chromeRendererMaxPssKb` | {'int': 1978} |
| `chromeRendererPssKb` | {'int': 1978} |
| `chromeRenderers` | {'int': 1978} |
| `chromeTabs` | {'int': 1978} |
| `chromeTabsProbedProfiles` | {'int': 1978} |
| `chromeUtilityPssKb` | {'int': 1978} |
| `desktopPssKb` | {'int': 1978} |
| `hostPssKb` | {'int': 1978} |
| `kind` | {'str': 1978} |
| `memAvailableKb` | {'int': 1978} |
| `memTotalKb` | {'int': 1978} |
| `otherPssKb` | {'int': 1978} |
| `processes` | {'int': 1978} |
| `pssFallbackProcesses` | {'int': 1978} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 438} |
| `display` | {'int': 439} |
| `kind` | {'str': 439} |
| `processes` | {'int': 439} |
| `pssKb` | {'int': 439} |
| `rendererMaxPssKb` | {'int': 439} |
| `renderers` | {'int': 439} |
| `tabs` | {'int': 439} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-06 21:39:29 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=617618 lines=1359
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1354 |
| `boot_stage` | 3 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1354} |
| `chromeGpuPssKb` | {'int': 1354} |
| `chromeOtherPssKb` | {'int': 1354} |
| `chromeProcesses` | {'int': 1354} |
| `chromeProfiles` | {'int': 1354} |
| `chromeRendererMaxPssKb` | {'int': 1354} |
| `chromeRendererPssKb` | {'int': 1354} |
| `chromeRenderers` | {'int': 1354} |
| `chromeTabs` | {'int': 1354} |
| `chromeTabsProbedProfiles` | {'int': 1354} |
| `chromeUtilityPssKb` | {'int': 1354} |
| `desktopPssKb` | {'int': 1354} |
| `hostPssKb` | {'int': 1354} |
| `kind` | {'str': 1354} |
| `memAvailableKb` | {'int': 1354} |
| `memTotalKb` | {'int': 1354} |
| `otherPssKb` | {'int': 1354} |
| `processes` | {'int': 1354} |
| `pssFallbackProcesses` | {'int': 1354} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

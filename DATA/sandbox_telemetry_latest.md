# sandbox_telemetry_parse — 2026-10-06 10:21:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=312098 lines=689
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 684 |
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
| `chromeBrowserPssKb` | {'int': 684} |
| `chromeGpuPssKb` | {'int': 684} |
| `chromeOtherPssKb` | {'int': 684} |
| `chromeProcesses` | {'int': 684} |
| `chromeProfiles` | {'int': 684} |
| `chromeRendererMaxPssKb` | {'int': 684} |
| `chromeRendererPssKb` | {'int': 684} |
| `chromeRenderers` | {'int': 684} |
| `chromeTabs` | {'int': 684} |
| `chromeTabsProbedProfiles` | {'int': 684} |
| `chromeUtilityPssKb` | {'int': 684} |
| `desktopPssKb` | {'int': 684} |
| `hostPssKb` | {'int': 684} |
| `kind` | {'str': 684} |
| `memAvailableKb` | {'int': 684} |
| `memTotalKb` | {'int': 684} |
| `otherPssKb` | {'int': 684} |
| `processes` | {'int': 684} |
| `pssFallbackProcesses` | {'int': 684} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

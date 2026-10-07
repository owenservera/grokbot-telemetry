# sandbox_telemetry_parse — 2026-10-07 03:12:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=768277 lines=1689
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1684 |
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
| `chromeBrowserPssKb` | {'int': 1684} |
| `chromeGpuPssKb` | {'int': 1684} |
| `chromeOtherPssKb` | {'int': 1684} |
| `chromeProcesses` | {'int': 1684} |
| `chromeProfiles` | {'int': 1684} |
| `chromeRendererMaxPssKb` | {'int': 1684} |
| `chromeRendererPssKb` | {'int': 1684} |
| `chromeRenderers` | {'int': 1684} |
| `chromeTabs` | {'int': 1684} |
| `chromeTabsProbedProfiles` | {'int': 1684} |
| `chromeUtilityPssKb` | {'int': 1684} |
| `desktopPssKb` | {'int': 1684} |
| `hostPssKb` | {'int': 1684} |
| `kind` | {'str': 1684} |
| `memAvailableKb` | {'int': 1684} |
| `memTotalKb` | {'int': 1684} |
| `otherPssKb` | {'int': 1684} |
| `processes` | {'int': 1684} |
| `pssFallbackProcesses` | {'int': 1684} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

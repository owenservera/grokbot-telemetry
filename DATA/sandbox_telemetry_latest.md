# sandbox_telemetry_parse — 2026-10-27 04:23:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=318712 lines=708
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 703 |
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
| `chromeBrowserPssKb` | {'int': 703} |
| `chromeGpuPssKb` | {'int': 703} |
| `chromeOtherPssKb` | {'int': 703} |
| `chromeProcesses` | {'int': 703} |
| `chromeProfiles` | {'int': 703} |
| `chromeRendererMaxPssKb` | {'int': 703} |
| `chromeRendererPssKb` | {'int': 703} |
| `chromeRenderers` | {'int': 703} |
| `chromeTabs` | {'int': 703} |
| `chromeTabsProbedProfiles` | {'int': 703} |
| `chromeUtilityPssKb` | {'int': 703} |
| `desktopPssKb` | {'int': 703} |
| `hostPssKb` | {'int': 703} |
| `kind` | {'str': 703} |
| `memAvailableKb` | {'int': 703} |
| `memTotalKb` | {'int': 703} |
| `otherPssKb` | {'int': 703} |
| `processes` | {'int': 703} |
| `pssFallbackProcesses` | {'int': 703} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-27 03:35:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=298824 lines=664
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 659 |
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
| `chromeBrowserPssKb` | {'int': 659} |
| `chromeGpuPssKb` | {'int': 659} |
| `chromeOtherPssKb` | {'int': 659} |
| `chromeProcesses` | {'int': 659} |
| `chromeProfiles` | {'int': 659} |
| `chromeRendererMaxPssKb` | {'int': 659} |
| `chromeRendererPssKb` | {'int': 659} |
| `chromeRenderers` | {'int': 659} |
| `chromeTabs` | {'int': 659} |
| `chromeTabsProbedProfiles` | {'int': 659} |
| `chromeUtilityPssKb` | {'int': 659} |
| `desktopPssKb` | {'int': 659} |
| `hostPssKb` | {'int': 659} |
| `kind` | {'str': 659} |
| `memAvailableKb` | {'int': 659} |
| `memTotalKb` | {'int': 659} |
| `otherPssKb` | {'int': 659} |
| `processes` | {'int': 659} |
| `pssFallbackProcesses` | {'int': 659} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

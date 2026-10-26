# sandbox_telemetry_parse — 2026-10-26 23:38:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=204684 lines=456
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 451 |
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
| `chromeBrowserPssKb` | {'int': 451} |
| `chromeGpuPssKb` | {'int': 451} |
| `chromeOtherPssKb` | {'int': 451} |
| `chromeProcesses` | {'int': 451} |
| `chromeProfiles` | {'int': 451} |
| `chromeRendererMaxPssKb` | {'int': 451} |
| `chromeRendererPssKb` | {'int': 451} |
| `chromeRenderers` | {'int': 451} |
| `chromeTabs` | {'int': 451} |
| `chromeTabsProbedProfiles` | {'int': 451} |
| `chromeUtilityPssKb` | {'int': 451} |
| `desktopPssKb` | {'int': 451} |
| `hostPssKb` | {'int': 451} |
| `kind` | {'str': 451} |
| `memAvailableKb` | {'int': 451} |
| `memTotalKb` | {'int': 451} |
| `otherPssKb` | {'int': 451} |
| `processes` | {'int': 451} |
| `pssFallbackProcesses` | {'int': 451} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

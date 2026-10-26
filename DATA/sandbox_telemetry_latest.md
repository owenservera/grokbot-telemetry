# sandbox_telemetry_parse — 2026-10-26 15:46:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3560 lines=12
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7 |
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
| `chromeBrowserPssKb` | {'int': 7} |
| `chromeGpuPssKb` | {'int': 7} |
| `chromeOtherPssKb` | {'int': 7} |
| `chromeProcesses` | {'int': 7} |
| `chromeProfiles` | {'int': 7} |
| `chromeRendererMaxPssKb` | {'int': 7} |
| `chromeRendererPssKb` | {'int': 7} |
| `chromeRenderers` | {'int': 7} |
| `chromeTabs` | {'int': 7} |
| `chromeTabsProbedProfiles` | {'int': 7} |
| `chromeUtilityPssKb` | {'int': 7} |
| `desktopPssKb` | {'int': 7} |
| `hostPssKb` | {'int': 7} |
| `kind` | {'str': 7} |
| `memAvailableKb` | {'int': 7} |
| `memTotalKb` | {'int': 7} |
| `otherPssKb` | {'int': 7} |
| `processes` | {'int': 7} |
| `pssFallbackProcesses` | {'int': 7} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

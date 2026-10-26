# sandbox_telemetry_parse — 2026-10-26 23:22:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=197889 lines=441
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 436 |
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
| `chromeBrowserPssKb` | {'int': 436} |
| `chromeGpuPssKb` | {'int': 436} |
| `chromeOtherPssKb` | {'int': 436} |
| `chromeProcesses` | {'int': 436} |
| `chromeProfiles` | {'int': 436} |
| `chromeRendererMaxPssKb` | {'int': 436} |
| `chromeRendererPssKb` | {'int': 436} |
| `chromeRenderers` | {'int': 436} |
| `chromeTabs` | {'int': 436} |
| `chromeTabsProbedProfiles` | {'int': 436} |
| `chromeUtilityPssKb` | {'int': 436} |
| `desktopPssKb` | {'int': 436} |
| `hostPssKb` | {'int': 436} |
| `kind` | {'str': 436} |
| `memAvailableKb` | {'int': 436} |
| `memTotalKb` | {'int': 436} |
| `otherPssKb` | {'int': 436} |
| `processes` | {'int': 436} |
| `pssFallbackProcesses` | {'int': 436} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

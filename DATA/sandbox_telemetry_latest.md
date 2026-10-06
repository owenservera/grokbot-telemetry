# sandbox_telemetry_parse — 2026-10-06 02:45:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=105530 lines=236
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 231 |
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
| `chromeBrowserPssKb` | {'int': 231} |
| `chromeGpuPssKb` | {'int': 231} |
| `chromeOtherPssKb` | {'int': 231} |
| `chromeProcesses` | {'int': 231} |
| `chromeProfiles` | {'int': 231} |
| `chromeRendererMaxPssKb` | {'int': 231} |
| `chromeRendererPssKb` | {'int': 231} |
| `chromeRenderers` | {'int': 231} |
| `chromeTabs` | {'int': 231} |
| `chromeTabsProbedProfiles` | {'int': 231} |
| `chromeUtilityPssKb` | {'int': 231} |
| `desktopPssKb` | {'int': 231} |
| `hostPssKb` | {'int': 231} |
| `kind` | {'str': 231} |
| `memAvailableKb` | {'int': 231} |
| `memTotalKb` | {'int': 231} |
| `otherPssKb` | {'int': 231} |
| `processes` | {'int': 231} |
| `pssFallbackProcesses` | {'int': 231} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

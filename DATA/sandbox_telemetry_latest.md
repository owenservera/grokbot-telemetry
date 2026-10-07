# sandbox_telemetry_parse — 2026-10-07 15:40:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1103893 lines=2425
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2420 |
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
| `chromeBrowserPssKb` | {'int': 2420} |
| `chromeGpuPssKb` | {'int': 2420} |
| `chromeOtherPssKb` | {'int': 2420} |
| `chromeProcesses` | {'int': 2420} |
| `chromeProfiles` | {'int': 2420} |
| `chromeRendererMaxPssKb` | {'int': 2420} |
| `chromeRendererPssKb` | {'int': 2420} |
| `chromeRenderers` | {'int': 2420} |
| `chromeTabs` | {'int': 2420} |
| `chromeTabsProbedProfiles` | {'int': 2420} |
| `chromeUtilityPssKb` | {'int': 2420} |
| `desktopPssKb` | {'int': 2420} |
| `hostPssKb` | {'int': 2420} |
| `kind` | {'str': 2420} |
| `memAvailableKb` | {'int': 2420} |
| `memTotalKb` | {'int': 2420} |
| `otherPssKb` | {'int': 2420} |
| `processes` | {'int': 2420} |
| `pssFallbackProcesses` | {'int': 2420} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

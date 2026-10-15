# sandbox_telemetry_parse — 2026-10-16 00:19:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1125398 lines=2494
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2489 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2489} |
| `chromeGpuPssKb` | {'int': 2489} |
| `chromeOtherPssKb` | {'int': 2489} |
| `chromeProcesses` | {'int': 2489} |
| `chromeProfiles` | {'int': 2489} |
| `chromeRendererMaxPssKb` | {'int': 2489} |
| `chromeRendererPssKb` | {'int': 2489} |
| `chromeRenderers` | {'int': 2489} |
| `chromeTabs` | {'int': 2489} |
| `chromeTabsProbedProfiles` | {'int': 2489} |
| `chromeUtilityPssKb` | {'int': 2489} |
| `desktopPssKb` | {'int': 2489} |
| `hostPssKb` | {'int': 2489} |
| `kind` | {'str': 2489} |
| `memAvailableKb` | {'int': 2489} |
| `memTotalKb` | {'int': 2489} |
| `otherPssKb` | {'int': 2489} |
| `processes` | {'int': 2489} |
| `pssFallbackProcesses` | {'int': 2489} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

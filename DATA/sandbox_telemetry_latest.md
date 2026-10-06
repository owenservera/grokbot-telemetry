# sandbox_telemetry_parse — 2026-10-07 00:25:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=692876 lines=1524
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1519 |
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
| `chromeBrowserPssKb` | {'int': 1519} |
| `chromeGpuPssKb` | {'int': 1519} |
| `chromeOtherPssKb` | {'int': 1519} |
| `chromeProcesses` | {'int': 1519} |
| `chromeProfiles` | {'int': 1519} |
| `chromeRendererMaxPssKb` | {'int': 1519} |
| `chromeRendererPssKb` | {'int': 1519} |
| `chromeRenderers` | {'int': 1519} |
| `chromeTabs` | {'int': 1519} |
| `chromeTabsProbedProfiles` | {'int': 1519} |
| `chromeUtilityPssKb` | {'int': 1519} |
| `desktopPssKb` | {'int': 1519} |
| `hostPssKb` | {'int': 1519} |
| `kind` | {'str': 1519} |
| `memAvailableKb` | {'int': 1519} |
| `memTotalKb` | {'int': 1519} |
| `otherPssKb` | {'int': 1519} |
| `processes` | {'int': 1519} |
| `pssFallbackProcesses` | {'int': 1519} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

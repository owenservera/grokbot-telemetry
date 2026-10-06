# sandbox_telemetry_parse — 2026-10-06 20:11:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=577490 lines=1271
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1266 |
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
| `chromeBrowserPssKb` | {'int': 1266} |
| `chromeGpuPssKb` | {'int': 1266} |
| `chromeOtherPssKb` | {'int': 1266} |
| `chromeProcesses` | {'int': 1266} |
| `chromeProfiles` | {'int': 1266} |
| `chromeRendererMaxPssKb` | {'int': 1266} |
| `chromeRendererPssKb` | {'int': 1266} |
| `chromeRenderers` | {'int': 1266} |
| `chromeTabs` | {'int': 1266} |
| `chromeTabsProbedProfiles` | {'int': 1266} |
| `chromeUtilityPssKb` | {'int': 1266} |
| `desktopPssKb` | {'int': 1266} |
| `hostPssKb` | {'int': 1266} |
| `kind` | {'str': 1266} |
| `memAvailableKb` | {'int': 1266} |
| `memTotalKb` | {'int': 1266} |
| `otherPssKb` | {'int': 1266} |
| `processes` | {'int': 1266} |
| `pssFallbackProcesses` | {'int': 1266} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-15 23:56:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1118618 lines=2479
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2474 |
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
| `chromeBrowserPssKb` | {'int': 2474} |
| `chromeGpuPssKb` | {'int': 2474} |
| `chromeOtherPssKb` | {'int': 2474} |
| `chromeProcesses` | {'int': 2474} |
| `chromeProfiles` | {'int': 2474} |
| `chromeRendererMaxPssKb` | {'int': 2474} |
| `chromeRendererPssKb` | {'int': 2474} |
| `chromeRenderers` | {'int': 2474} |
| `chromeTabs` | {'int': 2474} |
| `chromeTabsProbedProfiles` | {'int': 2474} |
| `chromeUtilityPssKb` | {'int': 2474} |
| `desktopPssKb` | {'int': 2474} |
| `hostPssKb` | {'int': 2474} |
| `kind` | {'str': 2474} |
| `memAvailableKb` | {'int': 2474} |
| `memTotalKb` | {'int': 2474} |
| `otherPssKb` | {'int': 2474} |
| `processes` | {'int': 2474} |
| `pssFallbackProcesses` | {'int': 2474} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-06 09:40:29 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=293402 lines=648
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 643 |
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
| `chromeBrowserPssKb` | {'int': 643} |
| `chromeGpuPssKb` | {'int': 643} |
| `chromeOtherPssKb` | {'int': 643} |
| `chromeProcesses` | {'int': 643} |
| `chromeProfiles` | {'int': 643} |
| `chromeRendererMaxPssKb` | {'int': 643} |
| `chromeRendererPssKb` | {'int': 643} |
| `chromeRenderers` | {'int': 643} |
| `chromeTabs` | {'int': 643} |
| `chromeTabsProbedProfiles` | {'int': 643} |
| `chromeUtilityPssKb` | {'int': 643} |
| `desktopPssKb` | {'int': 643} |
| `hostPssKb` | {'int': 643} |
| `kind` | {'str': 643} |
| `memAvailableKb` | {'int': 643} |
| `memTotalKb` | {'int': 643} |
| `otherPssKb` | {'int': 643} |
| `processes` | {'int': 643} |
| `pssFallbackProcesses` | {'int': 643} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-07 02:29:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=749544 lines=1648
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1643 |
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
| `chromeBrowserPssKb` | {'int': 1643} |
| `chromeGpuPssKb` | {'int': 1643} |
| `chromeOtherPssKb` | {'int': 1643} |
| `chromeProcesses` | {'int': 1643} |
| `chromeProfiles` | {'int': 1643} |
| `chromeRendererMaxPssKb` | {'int': 1643} |
| `chromeRendererPssKb` | {'int': 1643} |
| `chromeRenderers` | {'int': 1643} |
| `chromeTabs` | {'int': 1643} |
| `chromeTabsProbedProfiles` | {'int': 1643} |
| `chromeUtilityPssKb` | {'int': 1643} |
| `desktopPssKb` | {'int': 1643} |
| `hostPssKb` | {'int': 1643} |
| `kind` | {'str': 1643} |
| `memAvailableKb` | {'int': 1643} |
| `memTotalKb` | {'int': 1643} |
| `otherPssKb` | {'int': 1643} |
| `processes` | {'int': 1643} |
| `pssFallbackProcesses` | {'int': 1643} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-07 00:41:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=700188 lines=1540
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1535 |
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
| `chromeBrowserPssKb` | {'int': 1535} |
| `chromeGpuPssKb` | {'int': 1535} |
| `chromeOtherPssKb` | {'int': 1535} |
| `chromeProcesses` | {'int': 1535} |
| `chromeProfiles` | {'int': 1535} |
| `chromeRendererMaxPssKb` | {'int': 1535} |
| `chromeRendererPssKb` | {'int': 1535} |
| `chromeRenderers` | {'int': 1535} |
| `chromeTabs` | {'int': 1535} |
| `chromeTabsProbedProfiles` | {'int': 1535} |
| `chromeUtilityPssKb` | {'int': 1535} |
| `desktopPssKb` | {'int': 1535} |
| `hostPssKb` | {'int': 1535} |
| `kind` | {'str': 1535} |
| `memAvailableKb` | {'int': 1535} |
| `memTotalKb` | {'int': 1535} |
| `otherPssKb` | {'int': 1535} |
| `processes` | {'int': 1535} |
| `pssFallbackProcesses` | {'int': 1535} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

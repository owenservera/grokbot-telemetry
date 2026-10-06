# sandbox_telemetry_parse — 2026-10-07 00:20:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=690591 lines=1519
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1514 |
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
| `chromeBrowserPssKb` | {'int': 1514} |
| `chromeGpuPssKb` | {'int': 1514} |
| `chromeOtherPssKb` | {'int': 1514} |
| `chromeProcesses` | {'int': 1514} |
| `chromeProfiles` | {'int': 1514} |
| `chromeRendererMaxPssKb` | {'int': 1514} |
| `chromeRendererPssKb` | {'int': 1514} |
| `chromeRenderers` | {'int': 1514} |
| `chromeTabs` | {'int': 1514} |
| `chromeTabsProbedProfiles` | {'int': 1514} |
| `chromeUtilityPssKb` | {'int': 1514} |
| `desktopPssKb` | {'int': 1514} |
| `hostPssKb` | {'int': 1514} |
| `kind` | {'str': 1514} |
| `memAvailableKb` | {'int': 1514} |
| `memTotalKb` | {'int': 1514} |
| `otherPssKb` | {'int': 1514} |
| `processes` | {'int': 1514} |
| `pssFallbackProcesses` | {'int': 1514} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

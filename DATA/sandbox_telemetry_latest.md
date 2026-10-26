# sandbox_telemetry_parse — 2026-10-26 23:17:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=195624 lines=436
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 431 |
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
| `chromeBrowserPssKb` | {'int': 431} |
| `chromeGpuPssKb` | {'int': 431} |
| `chromeOtherPssKb` | {'int': 431} |
| `chromeProcesses` | {'int': 431} |
| `chromeProfiles` | {'int': 431} |
| `chromeRendererMaxPssKb` | {'int': 431} |
| `chromeRendererPssKb` | {'int': 431} |
| `chromeRenderers` | {'int': 431} |
| `chromeTabs` | {'int': 431} |
| `chromeTabsProbedProfiles` | {'int': 431} |
| `chromeUtilityPssKb` | {'int': 431} |
| `desktopPssKb` | {'int': 431} |
| `hostPssKb` | {'int': 431} |
| `kind` | {'str': 431} |
| `memAvailableKb` | {'int': 431} |
| `memTotalKb` | {'int': 431} |
| `otherPssKb` | {'int': 431} |
| `processes` | {'int': 431} |
| `pssFallbackProcesses` | {'int': 431} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

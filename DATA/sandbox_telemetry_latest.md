# sandbox_telemetry_parse — 2026-10-07 01:07:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=711613 lines=1565
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1560 |
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
| `chromeBrowserPssKb` | {'int': 1560} |
| `chromeGpuPssKb` | {'int': 1560} |
| `chromeOtherPssKb` | {'int': 1560} |
| `chromeProcesses` | {'int': 1560} |
| `chromeProfiles` | {'int': 1560} |
| `chromeRendererMaxPssKb` | {'int': 1560} |
| `chromeRendererPssKb` | {'int': 1560} |
| `chromeRenderers` | {'int': 1560} |
| `chromeTabs` | {'int': 1560} |
| `chromeTabsProbedProfiles` | {'int': 1560} |
| `chromeUtilityPssKb` | {'int': 1560} |
| `desktopPssKb` | {'int': 1560} |
| `hostPssKb` | {'int': 1560} |
| `kind` | {'str': 1560} |
| `memAvailableKb` | {'int': 1560} |
| `memTotalKb` | {'int': 1560} |
| `otherPssKb` | {'int': 1560} |
| `processes` | {'int': 1560} |
| `pssFallbackProcesses` | {'int': 1560} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

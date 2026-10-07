# sandbox_telemetry_parse — 2026-10-07 03:48:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=784693 lines=1725
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1720 |
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
| `chromeBrowserPssKb` | {'int': 1720} |
| `chromeGpuPssKb` | {'int': 1720} |
| `chromeOtherPssKb` | {'int': 1720} |
| `chromeProcesses` | {'int': 1720} |
| `chromeProfiles` | {'int': 1720} |
| `chromeRendererMaxPssKb` | {'int': 1720} |
| `chromeRendererPssKb` | {'int': 1720} |
| `chromeRenderers` | {'int': 1720} |
| `chromeTabs` | {'int': 1720} |
| `chromeTabsProbedProfiles` | {'int': 1720} |
| `chromeUtilityPssKb` | {'int': 1720} |
| `desktopPssKb` | {'int': 1720} |
| `hostPssKb` | {'int': 1720} |
| `kind` | {'str': 1720} |
| `memAvailableKb` | {'int': 1720} |
| `memTotalKb` | {'int': 1720} |
| `otherPssKb` | {'int': 1720} |
| `processes` | {'int': 1720} |
| `pssFallbackProcesses` | {'int': 1720} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

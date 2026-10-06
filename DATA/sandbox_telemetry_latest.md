# sandbox_telemetry_parse — 2026-10-06 08:59:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=274706 lines=607
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 602 |
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
| `chromeBrowserPssKb` | {'int': 602} |
| `chromeGpuPssKb` | {'int': 602} |
| `chromeOtherPssKb` | {'int': 602} |
| `chromeProcesses` | {'int': 602} |
| `chromeProfiles` | {'int': 602} |
| `chromeRendererMaxPssKb` | {'int': 602} |
| `chromeRendererPssKb` | {'int': 602} |
| `chromeRenderers` | {'int': 602} |
| `chromeTabs` | {'int': 602} |
| `chromeTabsProbedProfiles` | {'int': 602} |
| `chromeUtilityPssKb` | {'int': 602} |
| `desktopPssKb` | {'int': 602} |
| `hostPssKb` | {'int': 602} |
| `kind` | {'str': 602} |
| `memAvailableKb` | {'int': 602} |
| `memTotalKb` | {'int': 602} |
| `otherPssKb` | {'int': 602} |
| `processes` | {'int': 602} |
| `pssFallbackProcesses` | {'int': 602} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

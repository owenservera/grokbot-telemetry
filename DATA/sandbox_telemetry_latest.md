# sandbox_telemetry_parse — 2026-10-27 03:01:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=283456 lines=630
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 625 |
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
| `chromeBrowserPssKb` | {'int': 625} |
| `chromeGpuPssKb` | {'int': 625} |
| `chromeOtherPssKb` | {'int': 625} |
| `chromeProcesses` | {'int': 625} |
| `chromeProfiles` | {'int': 625} |
| `chromeRendererMaxPssKb` | {'int': 625} |
| `chromeRendererPssKb` | {'int': 625} |
| `chromeRenderers` | {'int': 625} |
| `chromeTabs` | {'int': 625} |
| `chromeTabsProbedProfiles` | {'int': 625} |
| `chromeUtilityPssKb` | {'int': 625} |
| `desktopPssKb` | {'int': 625} |
| `hostPssKb` | {'int': 625} |
| `kind` | {'str': 625} |
| `memAvailableKb` | {'int': 625} |
| `memTotalKb` | {'int': 625} |
| `otherPssKb` | {'int': 625} |
| `processes` | {'int': 625} |
| `pssFallbackProcesses` | {'int': 625} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

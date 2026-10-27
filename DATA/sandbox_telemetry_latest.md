# sandbox_telemetry_parse — 2026-10-27 03:28:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=295660 lines=657
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 652 |
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
| `chromeBrowserPssKb` | {'int': 652} |
| `chromeGpuPssKb` | {'int': 652} |
| `chromeOtherPssKb` | {'int': 652} |
| `chromeProcesses` | {'int': 652} |
| `chromeProfiles` | {'int': 652} |
| `chromeRendererMaxPssKb` | {'int': 652} |
| `chromeRendererPssKb` | {'int': 652} |
| `chromeRenderers` | {'int': 652} |
| `chromeTabs` | {'int': 652} |
| `chromeTabsProbedProfiles` | {'int': 652} |
| `chromeUtilityPssKb` | {'int': 652} |
| `desktopPssKb` | {'int': 652} |
| `hostPssKb` | {'int': 652} |
| `kind` | {'str': 652} |
| `memAvailableKb` | {'int': 652} |
| `memTotalKb` | {'int': 652} |
| `otherPssKb` | {'int': 652} |
| `processes` | {'int': 652} |
| `pssFallbackProcesses` | {'int': 652} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

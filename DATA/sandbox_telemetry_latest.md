# sandbox_telemetry_parse — 2026-10-27 05:23:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=343120 lines=762
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 757 |
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
| `chromeBrowserPssKb` | {'int': 757} |
| `chromeGpuPssKb` | {'int': 757} |
| `chromeOtherPssKb` | {'int': 757} |
| `chromeProcesses` | {'int': 757} |
| `chromeProfiles` | {'int': 757} |
| `chromeRendererMaxPssKb` | {'int': 757} |
| `chromeRendererPssKb` | {'int': 757} |
| `chromeRenderers` | {'int': 757} |
| `chromeTabs` | {'int': 757} |
| `chromeTabsProbedProfiles` | {'int': 757} |
| `chromeUtilityPssKb` | {'int': 757} |
| `desktopPssKb` | {'int': 757} |
| `hostPssKb` | {'int': 757} |
| `kind` | {'str': 757} |
| `memAvailableKb` | {'int': 757} |
| `memTotalKb` | {'int': 757} |
| `otherPssKb` | {'int': 757} |
| `processes` | {'int': 757} |
| `pssFallbackProcesses` | {'int': 757} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-27 03:47:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=303796 lines=675
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 670 |
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
| `chromeBrowserPssKb` | {'int': 670} |
| `chromeGpuPssKb` | {'int': 670} |
| `chromeOtherPssKb` | {'int': 670} |
| `chromeProcesses` | {'int': 670} |
| `chromeProfiles` | {'int': 670} |
| `chromeRendererMaxPssKb` | {'int': 670} |
| `chromeRendererPssKb` | {'int': 670} |
| `chromeRenderers` | {'int': 670} |
| `chromeTabs` | {'int': 670} |
| `chromeTabsProbedProfiles` | {'int': 670} |
| `chromeUtilityPssKb` | {'int': 670} |
| `desktopPssKb` | {'int': 670} |
| `hostPssKb` | {'int': 670} |
| `kind` | {'str': 670} |
| `memAvailableKb` | {'int': 670} |
| `memTotalKb` | {'int': 670} |
| `otherPssKb` | {'int': 670} |
| `processes` | {'int': 670} |
| `pssFallbackProcesses` | {'int': 670} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

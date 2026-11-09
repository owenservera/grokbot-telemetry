# sandbox_telemetry_parse — 2026-11-09 17:58:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=777477 lines=1726
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1717 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 1717} |
| `chromeGpuPssKb` | {'int': 1717} |
| `chromeOtherPssKb` | {'int': 1717} |
| `chromeProcesses` | {'int': 1717} |
| `chromeProfiles` | {'int': 1717} |
| `chromeRendererMaxPssKb` | {'int': 1717} |
| `chromeRendererPssKb` | {'int': 1717} |
| `chromeRenderers` | {'int': 1717} |
| `chromeTabs` | {'int': 1717} |
| `chromeTabsProbedProfiles` | {'int': 1717} |
| `chromeUtilityPssKb` | {'int': 1717} |
| `desktopPssKb` | {'int': 1717} |
| `hostPssKb` | {'int': 1717} |
| `kind` | {'str': 1717} |
| `memAvailableKb` | {'int': 1717} |
| `memTotalKb` | {'int': 1717} |
| `otherPssKb` | {'int': 1717} |
| `processes` | {'int': 1717} |
| `pssFallbackProcesses` | {'int': 1717} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

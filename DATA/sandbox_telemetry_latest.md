# sandbox_telemetry_parse — 2026-10-26 16:55:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=29826 lines=70
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 65 |
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
| `chromeBrowserPssKb` | {'int': 65} |
| `chromeGpuPssKb` | {'int': 65} |
| `chromeOtherPssKb` | {'int': 65} |
| `chromeProcesses` | {'int': 65} |
| `chromeProfiles` | {'int': 65} |
| `chromeRendererMaxPssKb` | {'int': 65} |
| `chromeRendererPssKb` | {'int': 65} |
| `chromeRenderers` | {'int': 65} |
| `chromeTabs` | {'int': 65} |
| `chromeTabsProbedProfiles` | {'int': 65} |
| `chromeUtilityPssKb` | {'int': 65} |
| `desktopPssKb` | {'int': 65} |
| `hostPssKb` | {'int': 65} |
| `kind` | {'str': 65} |
| `memAvailableKb` | {'int': 65} |
| `memTotalKb` | {'int': 65} |
| `otherPssKb` | {'int': 65} |
| `processes` | {'int': 65} |
| `pssFallbackProcesses` | {'int': 65} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

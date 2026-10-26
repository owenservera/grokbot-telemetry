# sandbox_telemetry_parse — 2026-10-26 18:07:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=61989 lines=141
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 136 |
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
| `chromeBrowserPssKb` | {'int': 136} |
| `chromeGpuPssKb` | {'int': 136} |
| `chromeOtherPssKb` | {'int': 136} |
| `chromeProcesses` | {'int': 136} |
| `chromeProfiles` | {'int': 136} |
| `chromeRendererMaxPssKb` | {'int': 136} |
| `chromeRendererPssKb` | {'int': 136} |
| `chromeRenderers` | {'int': 136} |
| `chromeTabs` | {'int': 136} |
| `chromeTabsProbedProfiles` | {'int': 136} |
| `chromeUtilityPssKb` | {'int': 136} |
| `desktopPssKb` | {'int': 136} |
| `hostPssKb` | {'int': 136} |
| `kind` | {'str': 136} |
| `memAvailableKb` | {'int': 136} |
| `memTotalKb` | {'int': 136} |
| `otherPssKb` | {'int': 136} |
| `processes` | {'int': 136} |
| `pssFallbackProcesses` | {'int': 136} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

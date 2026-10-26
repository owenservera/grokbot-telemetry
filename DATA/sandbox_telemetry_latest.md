# sandbox_telemetry_parse — 2026-10-26 15:38:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1298 lines=7
## kind counts
| kind | count |
|------|------:|
| `boot_stage` | 3 |
| `memory_sample` | 2 |
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
| `chromeBrowserPssKb` | {'int': 2} |
| `chromeGpuPssKb` | {'int': 2} |
| `chromeOtherPssKb` | {'int': 2} |
| `chromeProcesses` | {'int': 2} |
| `chromeProfiles` | {'int': 2} |
| `chromeRendererMaxPssKb` | {'int': 2} |
| `chromeRendererPssKb` | {'int': 2} |
| `chromeRenderers` | {'int': 2} |
| `chromeTabs` | {'int': 2} |
| `chromeTabsProbedProfiles` | {'int': 2} |
| `chromeUtilityPssKb` | {'int': 2} |
| `desktopPssKb` | {'int': 2} |
| `hostPssKb` | {'int': 2} |
| `kind` | {'str': 2} |
| `memAvailableKb` | {'int': 2} |
| `memTotalKb` | {'int': 2} |
| `otherPssKb` | {'int': 2} |
| `processes` | {'int': 2} |
| `pssFallbackProcesses` | {'int': 2} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-26 17:41:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=50664 lines=116
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 111 |
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
| `chromeBrowserPssKb` | {'int': 111} |
| `chromeGpuPssKb` | {'int': 111} |
| `chromeOtherPssKb` | {'int': 111} |
| `chromeProcesses` | {'int': 111} |
| `chromeProfiles` | {'int': 111} |
| `chromeRendererMaxPssKb` | {'int': 111} |
| `chromeRendererPssKb` | {'int': 111} |
| `chromeRenderers` | {'int': 111} |
| `chromeTabs` | {'int': 111} |
| `chromeTabsProbedProfiles` | {'int': 111} |
| `chromeUtilityPssKb` | {'int': 111} |
| `desktopPssKb` | {'int': 111} |
| `hostPssKb` | {'int': 111} |
| `kind` | {'str': 111} |
| `memAvailableKb` | {'int': 111} |
| `memTotalKb` | {'int': 111} |
| `otherPssKb` | {'int': 111} |
| `processes` | {'int': 111} |
| `pssFallbackProcesses` | {'int': 111} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

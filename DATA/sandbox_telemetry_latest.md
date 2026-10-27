# sandbox_telemetry_parse — 2026-10-27 12:53:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=524086 lines=1162
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1157 |
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
| `chromeBrowserPssKb` | {'int': 1157} |
| `chromeGpuPssKb` | {'int': 1157} |
| `chromeOtherPssKb` | {'int': 1157} |
| `chromeProcesses` | {'int': 1157} |
| `chromeProfiles` | {'int': 1157} |
| `chromeRendererMaxPssKb` | {'int': 1157} |
| `chromeRendererPssKb` | {'int': 1157} |
| `chromeRenderers` | {'int': 1157} |
| `chromeTabs` | {'int': 1157} |
| `chromeTabsProbedProfiles` | {'int': 1157} |
| `chromeUtilityPssKb` | {'int': 1157} |
| `desktopPssKb` | {'int': 1157} |
| `hostPssKb` | {'int': 1157} |
| `kind` | {'str': 1157} |
| `memAvailableKb` | {'int': 1157} |
| `memTotalKb` | {'int': 1157} |
| `otherPssKb` | {'int': 1157} |
| `processes` | {'int': 1157} |
| `pssFallbackProcesses` | {'int': 1157} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

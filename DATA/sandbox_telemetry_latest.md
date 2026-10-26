# sandbox_telemetry_parse — 2026-10-26 18:27:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=71502 lines=162
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 157 |
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
| `chromeBrowserPssKb` | {'int': 157} |
| `chromeGpuPssKb` | {'int': 157} |
| `chromeOtherPssKb` | {'int': 157} |
| `chromeProcesses` | {'int': 157} |
| `chromeProfiles` | {'int': 157} |
| `chromeRendererMaxPssKb` | {'int': 157} |
| `chromeRendererPssKb` | {'int': 157} |
| `chromeRenderers` | {'int': 157} |
| `chromeTabs` | {'int': 157} |
| `chromeTabsProbedProfiles` | {'int': 157} |
| `chromeUtilityPssKb` | {'int': 157} |
| `desktopPssKb` | {'int': 157} |
| `hostPssKb` | {'int': 157} |
| `kind` | {'str': 157} |
| `memAvailableKb` | {'int': 157} |
| `memTotalKb` | {'int': 157} |
| `otherPssKb` | {'int': 157} |
| `processes` | {'int': 157} |
| `pssFallbackProcesses` | {'int': 157} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

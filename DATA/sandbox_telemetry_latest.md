# sandbox_telemetry_parse — 2026-10-27 13:42:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=539488 lines=1196
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1191 |
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
| `chromeBrowserPssKb` | {'int': 1191} |
| `chromeGpuPssKb` | {'int': 1191} |
| `chromeOtherPssKb` | {'int': 1191} |
| `chromeProcesses` | {'int': 1191} |
| `chromeProfiles` | {'int': 1191} |
| `chromeRendererMaxPssKb` | {'int': 1191} |
| `chromeRendererPssKb` | {'int': 1191} |
| `chromeRenderers` | {'int': 1191} |
| `chromeTabs` | {'int': 1191} |
| `chromeTabsProbedProfiles` | {'int': 1191} |
| `chromeUtilityPssKb` | {'int': 1191} |
| `desktopPssKb` | {'int': 1191} |
| `hostPssKb` | {'int': 1191} |
| `kind` | {'str': 1191} |
| `memAvailableKb` | {'int': 1191} |
| `memTotalKb` | {'int': 1191} |
| `otherPssKb` | {'int': 1191} |
| `processes` | {'int': 1191} |
| `pssFallbackProcesses` | {'int': 1191} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

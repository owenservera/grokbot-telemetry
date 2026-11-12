# sandbox_telemetry_parse — 2026-11-12 23:16:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2368638 lines=5242
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5233 |
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
| `chromeBrowserPssKb` | {'int': 5233} |
| `chromeGpuPssKb` | {'int': 5233} |
| `chromeOtherPssKb` | {'int': 5233} |
| `chromeProcesses` | {'int': 5233} |
| `chromeProfiles` | {'int': 5233} |
| `chromeRendererMaxPssKb` | {'int': 5233} |
| `chromeRendererPssKb` | {'int': 5233} |
| `chromeRenderers` | {'int': 5233} |
| `chromeTabs` | {'int': 5233} |
| `chromeTabsProbedProfiles` | {'int': 5233} |
| `chromeUtilityPssKb` | {'int': 5233} |
| `desktopPssKb` | {'int': 5233} |
| `hostPssKb` | {'int': 5233} |
| `kind` | {'str': 5233} |
| `memAvailableKb` | {'int': 5233} |
| `memTotalKb` | {'int': 5233} |
| `otherPssKb` | {'int': 5233} |
| `processes` | {'int': 5233} |
| `pssFallbackProcesses` | {'int': 5233} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

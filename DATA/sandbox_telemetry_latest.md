# sandbox_telemetry_parse — 2026-10-27 13:45:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=540394 lines=1198
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1193 |
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
| `chromeBrowserPssKb` | {'int': 1193} |
| `chromeGpuPssKb` | {'int': 1193} |
| `chromeOtherPssKb` | {'int': 1193} |
| `chromeProcesses` | {'int': 1193} |
| `chromeProfiles` | {'int': 1193} |
| `chromeRendererMaxPssKb` | {'int': 1193} |
| `chromeRendererPssKb` | {'int': 1193} |
| `chromeRenderers` | {'int': 1193} |
| `chromeTabs` | {'int': 1193} |
| `chromeTabsProbedProfiles` | {'int': 1193} |
| `chromeUtilityPssKb` | {'int': 1193} |
| `desktopPssKb` | {'int': 1193} |
| `hostPssKb` | {'int': 1193} |
| `kind` | {'str': 1193} |
| `memAvailableKb` | {'int': 1193} |
| `memTotalKb` | {'int': 1193} |
| `otherPssKb` | {'int': 1193} |
| `processes` | {'int': 1193} |
| `pssFallbackProcesses` | {'int': 1193} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

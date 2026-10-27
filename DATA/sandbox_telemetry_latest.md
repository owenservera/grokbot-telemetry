# sandbox_telemetry_parse — 2026-10-27 02:09:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=262212 lines=583
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 578 |
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
| `chromeBrowserPssKb` | {'int': 578} |
| `chromeGpuPssKb` | {'int': 578} |
| `chromeOtherPssKb` | {'int': 578} |
| `chromeProcesses` | {'int': 578} |
| `chromeProfiles` | {'int': 578} |
| `chromeRendererMaxPssKb` | {'int': 578} |
| `chromeRendererPssKb` | {'int': 578} |
| `chromeRenderers` | {'int': 578} |
| `chromeTabs` | {'int': 578} |
| `chromeTabsProbedProfiles` | {'int': 578} |
| `chromeUtilityPssKb` | {'int': 578} |
| `desktopPssKb` | {'int': 578} |
| `hostPssKb` | {'int': 578} |
| `kind` | {'str': 578} |
| `memAvailableKb` | {'int': 578} |
| `memTotalKb` | {'int': 578} |
| `otherPssKb` | {'int': 578} |
| `processes` | {'int': 578} |
| `pssFallbackProcesses` | {'int': 578} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

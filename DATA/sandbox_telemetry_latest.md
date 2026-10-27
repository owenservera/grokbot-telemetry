# sandbox_telemetry_parse — 2026-10-27 10:03:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=455683 lines=1011
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1006 |
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
| `chromeBrowserPssKb` | {'int': 1006} |
| `chromeGpuPssKb` | {'int': 1006} |
| `chromeOtherPssKb` | {'int': 1006} |
| `chromeProcesses` | {'int': 1006} |
| `chromeProfiles` | {'int': 1006} |
| `chromeRendererMaxPssKb` | {'int': 1006} |
| `chromeRendererPssKb` | {'int': 1006} |
| `chromeRenderers` | {'int': 1006} |
| `chromeTabs` | {'int': 1006} |
| `chromeTabsProbedProfiles` | {'int': 1006} |
| `chromeUtilityPssKb` | {'int': 1006} |
| `desktopPssKb` | {'int': 1006} |
| `hostPssKb` | {'int': 1006} |
| `kind` | {'str': 1006} |
| `memAvailableKb` | {'int': 1006} |
| `memTotalKb` | {'int': 1006} |
| `otherPssKb` | {'int': 1006} |
| `processes` | {'int': 1006} |
| `pssFallbackProcesses` | {'int': 1006} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

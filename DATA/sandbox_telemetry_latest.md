# sandbox_telemetry_parse — 2026-10-26 16:24:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=18048 lines=44
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 39 |
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
| `chromeBrowserPssKb` | {'int': 39} |
| `chromeGpuPssKb` | {'int': 39} |
| `chromeOtherPssKb` | {'int': 39} |
| `chromeProcesses` | {'int': 39} |
| `chromeProfiles` | {'int': 39} |
| `chromeRendererMaxPssKb` | {'int': 39} |
| `chromeRendererPssKb` | {'int': 39} |
| `chromeRenderers` | {'int': 39} |
| `chromeTabs` | {'int': 39} |
| `chromeTabsProbedProfiles` | {'int': 39} |
| `chromeUtilityPssKb` | {'int': 39} |
| `desktopPssKb` | {'int': 39} |
| `hostPssKb` | {'int': 39} |
| `kind` | {'str': 39} |
| `memAvailableKb` | {'int': 39} |
| `memTotalKb` | {'int': 39} |
| `otherPssKb` | {'int': 39} |
| `processes` | {'int': 39} |
| `pssFallbackProcesses` | {'int': 39} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

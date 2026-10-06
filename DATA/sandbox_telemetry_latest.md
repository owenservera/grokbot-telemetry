# sandbox_telemetry_parse — 2026-10-06 15:04:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=438866 lines=967
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 962 |
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
| `chromeBrowserPssKb` | {'int': 962} |
| `chromeGpuPssKb` | {'int': 962} |
| `chromeOtherPssKb` | {'int': 962} |
| `chromeProcesses` | {'int': 962} |
| `chromeProfiles` | {'int': 962} |
| `chromeRendererMaxPssKb` | {'int': 962} |
| `chromeRendererPssKb` | {'int': 962} |
| `chromeRenderers` | {'int': 962} |
| `chromeTabs` | {'int': 962} |
| `chromeTabsProbedProfiles` | {'int': 962} |
| `chromeUtilityPssKb` | {'int': 962} |
| `desktopPssKb` | {'int': 962} |
| `hostPssKb` | {'int': 962} |
| `kind` | {'str': 962} |
| `memAvailableKb` | {'int': 962} |
| `memTotalKb` | {'int': 962} |
| `otherPssKb` | {'int': 962} |
| `processes` | {'int': 962} |
| `pssFallbackProcesses` | {'int': 962} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-27 08:40:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=420412 lines=933
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 928 |
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
| `chromeBrowserPssKb` | {'int': 928} |
| `chromeGpuPssKb` | {'int': 928} |
| `chromeOtherPssKb` | {'int': 928} |
| `chromeProcesses` | {'int': 928} |
| `chromeProfiles` | {'int': 928} |
| `chromeRendererMaxPssKb` | {'int': 928} |
| `chromeRendererPssKb` | {'int': 928} |
| `chromeRenderers` | {'int': 928} |
| `chromeTabs` | {'int': 928} |
| `chromeTabsProbedProfiles` | {'int': 928} |
| `chromeUtilityPssKb` | {'int': 928} |
| `desktopPssKb` | {'int': 928} |
| `hostPssKb` | {'int': 928} |
| `kind` | {'str': 928} |
| `memAvailableKb` | {'int': 928} |
| `memTotalKb` | {'int': 928} |
| `otherPssKb` | {'int': 928} |
| `processes` | {'int': 928} |
| `pssFallbackProcesses` | {'int': 928} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

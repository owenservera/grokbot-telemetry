# sandbox_telemetry_parse — 2026-10-27 09:37:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=444820 lines=987
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 982 |
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
| `chromeBrowserPssKb` | {'int': 982} |
| `chromeGpuPssKb` | {'int': 982} |
| `chromeOtherPssKb` | {'int': 982} |
| `chromeProcesses` | {'int': 982} |
| `chromeProfiles` | {'int': 982} |
| `chromeRendererMaxPssKb` | {'int': 982} |
| `chromeRendererPssKb` | {'int': 982} |
| `chromeRenderers` | {'int': 982} |
| `chromeTabs` | {'int': 982} |
| `chromeTabsProbedProfiles` | {'int': 982} |
| `chromeUtilityPssKb` | {'int': 982} |
| `desktopPssKb` | {'int': 982} |
| `hostPssKb` | {'int': 982} |
| `kind` | {'str': 982} |
| `memAvailableKb` | {'int': 982} |
| `memTotalKb` | {'int': 982} |
| `otherPssKb` | {'int': 982} |
| `processes` | {'int': 982} |
| `pssFallbackProcesses` | {'int': 982} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

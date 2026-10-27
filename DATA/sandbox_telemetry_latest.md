# sandbox_telemetry_parse — 2026-10-27 08:56:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=427192 lines=948
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 943 |
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
| `chromeBrowserPssKb` | {'int': 943} |
| `chromeGpuPssKb` | {'int': 943} |
| `chromeOtherPssKb` | {'int': 943} |
| `chromeProcesses` | {'int': 943} |
| `chromeProfiles` | {'int': 943} |
| `chromeRendererMaxPssKb` | {'int': 943} |
| `chromeRendererPssKb` | {'int': 943} |
| `chromeRenderers` | {'int': 943} |
| `chromeTabs` | {'int': 943} |
| `chromeTabsProbedProfiles` | {'int': 943} |
| `chromeUtilityPssKb` | {'int': 943} |
| `desktopPssKb` | {'int': 943} |
| `hostPssKb` | {'int': 943} |
| `kind` | {'str': 943} |
| `memAvailableKb` | {'int': 943} |
| `memTotalKb` | {'int': 943} |
| `otherPssKb` | {'int': 943} |
| `processes` | {'int': 943} |
| `pssFallbackProcesses` | {'int': 943} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

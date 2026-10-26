# sandbox_telemetry_parse — 2026-10-26 19:43:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=104118 lines=234
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 229 |
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
| `chromeBrowserPssKb` | {'int': 229} |
| `chromeGpuPssKb` | {'int': 229} |
| `chromeOtherPssKb` | {'int': 229} |
| `chromeProcesses` | {'int': 229} |
| `chromeProfiles` | {'int': 229} |
| `chromeRendererMaxPssKb` | {'int': 229} |
| `chromeRendererPssKb` | {'int': 229} |
| `chromeRenderers` | {'int': 229} |
| `chromeTabs` | {'int': 229} |
| `chromeTabsProbedProfiles` | {'int': 229} |
| `chromeUtilityPssKb` | {'int': 229} |
| `desktopPssKb` | {'int': 229} |
| `hostPssKb` | {'int': 229} |
| `kind` | {'str': 229} |
| `memAvailableKb` | {'int': 229} |
| `memTotalKb` | {'int': 229} |
| `otherPssKb` | {'int': 229} |
| `processes` | {'int': 229} |
| `pssFallbackProcesses` | {'int': 229} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-15 20:42:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1048106 lines=2323
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2318 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2318} |
| `chromeGpuPssKb` | {'int': 2318} |
| `chromeOtherPssKb` | {'int': 2318} |
| `chromeProcesses` | {'int': 2318} |
| `chromeProfiles` | {'int': 2318} |
| `chromeRendererMaxPssKb` | {'int': 2318} |
| `chromeRendererPssKb` | {'int': 2318} |
| `chromeRenderers` | {'int': 2318} |
| `chromeTabs` | {'int': 2318} |
| `chromeTabsProbedProfiles` | {'int': 2318} |
| `chromeUtilityPssKb` | {'int': 2318} |
| `desktopPssKb` | {'int': 2318} |
| `hostPssKb` | {'int': 2318} |
| `kind` | {'str': 2318} |
| `memAvailableKb` | {'int': 2318} |
| `memTotalKb` | {'int': 2318} |
| `otherPssKb` | {'int': 2318} |
| `processes` | {'int': 2318} |
| `pssFallbackProcesses` | {'int': 2318} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

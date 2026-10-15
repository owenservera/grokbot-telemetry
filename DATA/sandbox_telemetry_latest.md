# sandbox_telemetry_parse — 2026-10-15 15:18:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=919286 lines=2038
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2033 |
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
| `chromeBrowserPssKb` | {'int': 2033} |
| `chromeGpuPssKb` | {'int': 2033} |
| `chromeOtherPssKb` | {'int': 2033} |
| `chromeProcesses` | {'int': 2033} |
| `chromeProfiles` | {'int': 2033} |
| `chromeRendererMaxPssKb` | {'int': 2033} |
| `chromeRendererPssKb` | {'int': 2033} |
| `chromeRenderers` | {'int': 2033} |
| `chromeTabs` | {'int': 2033} |
| `chromeTabsProbedProfiles` | {'int': 2033} |
| `chromeUtilityPssKb` | {'int': 2033} |
| `desktopPssKb` | {'int': 2033} |
| `hostPssKb` | {'int': 2033} |
| `kind` | {'str': 2033} |
| `memAvailableKb` | {'int': 2033} |
| `memTotalKb` | {'int': 2033} |
| `otherPssKb` | {'int': 2033} |
| `processes` | {'int': 2033} |
| `pssFallbackProcesses` | {'int': 2033} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-07 12:25:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1016797 lines=2234
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2229 |
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
| `chromeBrowserPssKb` | {'int': 2229} |
| `chromeGpuPssKb` | {'int': 2229} |
| `chromeOtherPssKb` | {'int': 2229} |
| `chromeProcesses` | {'int': 2229} |
| `chromeProfiles` | {'int': 2229} |
| `chromeRendererMaxPssKb` | {'int': 2229} |
| `chromeRendererPssKb` | {'int': 2229} |
| `chromeRenderers` | {'int': 2229} |
| `chromeTabs` | {'int': 2229} |
| `chromeTabsProbedProfiles` | {'int': 2229} |
| `chromeUtilityPssKb` | {'int': 2229} |
| `desktopPssKb` | {'int': 2229} |
| `hostPssKb` | {'int': 2229} |
| `kind` | {'str': 2229} |
| `memAvailableKb` | {'int': 2229} |
| `memTotalKb` | {'int': 2229} |
| `otherPssKb` | {'int': 2229} |
| `processes` | {'int': 2229} |
| `pssFallbackProcesses` | {'int': 2229} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

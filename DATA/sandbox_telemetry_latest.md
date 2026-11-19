# sandbox_telemetry_parse — 2026-11-19 18:20:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1388822 lines=3080
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3069 |
| `egress_tunnel` | 7 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3069} |
| `chromeGpuPssKb` | {'int': 3069} |
| `chromeOtherPssKb` | {'int': 3069} |
| `chromeProcesses` | {'int': 3069} |
| `chromeProfiles` | {'int': 3069} |
| `chromeRendererMaxPssKb` | {'int': 3069} |
| `chromeRendererPssKb` | {'int': 3069} |
| `chromeRenderers` | {'int': 3069} |
| `chromeTabs` | {'int': 3069} |
| `chromeTabsProbedProfiles` | {'int': 3069} |
| `chromeUtilityPssKb` | {'int': 3069} |
| `desktopPssKb` | {'int': 3069} |
| `hostPssKb` | {'int': 3069} |
| `kind` | {'str': 3069} |
| `memAvailableKb` | {'int': 3069} |
| `memTotalKb` | {'int': 3069} |
| `otherPssKb` | {'int': 3069} |
| `processes` | {'int': 3069} |
| `pssFallbackProcesses` | {'int': 3069} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

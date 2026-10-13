# sandbox_telemetry_parse — 2026-10-13 19:05:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1195840 lines=3115
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2323 |
| `chrome_profile_sample` | 784 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2323} |
| `chromeGpuPssKb` | {'int': 2323} |
| `chromeOtherPssKb` | {'int': 2323} |
| `chromeProcesses` | {'int': 2323} |
| `chromeProfiles` | {'int': 2323} |
| `chromeRendererMaxPssKb` | {'int': 2323} |
| `chromeRendererPssKb` | {'int': 2323} |
| `chromeRenderers` | {'int': 2323} |
| `chromeTabs` | {'int': 2323} |
| `chromeTabsProbedProfiles` | {'int': 2323} |
| `chromeUtilityPssKb` | {'int': 2323} |
| `desktopPssKb` | {'int': 2323} |
| `hostPssKb` | {'int': 2323} |
| `kind` | {'str': 2323} |
| `memAvailableKb` | {'int': 2323} |
| `memTotalKb` | {'int': 2323} |
| `otherPssKb` | {'int': 2323} |
| `processes` | {'int': 2323} |
| `pssFallbackProcesses` | {'int': 2323} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 783} |
| `display` | {'int': 784} |
| `kind` | {'str': 784} |
| `processes` | {'int': 784} |
| `pssKb` | {'int': 784} |
| `rendererMaxPssKb` | {'int': 784} |
| `renderers` | {'int': 784} |
| `tabs` | {'int': 784} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

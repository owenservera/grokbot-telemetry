# sandbox_telemetry_parse — 2026-10-13 05:09:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=842138 lines=2005
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1768 |
| `chrome_profile_sample` | 229 |
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
| `chromeBrowserPssKb` | {'int': 1768} |
| `chromeGpuPssKb` | {'int': 1768} |
| `chromeOtherPssKb` | {'int': 1768} |
| `chromeProcesses` | {'int': 1768} |
| `chromeProfiles` | {'int': 1768} |
| `chromeRendererMaxPssKb` | {'int': 1768} |
| `chromeRendererPssKb` | {'int': 1768} |
| `chromeRenderers` | {'int': 1768} |
| `chromeTabs` | {'int': 1768} |
| `chromeTabsProbedProfiles` | {'int': 1768} |
| `chromeUtilityPssKb` | {'int': 1768} |
| `desktopPssKb` | {'int': 1768} |
| `hostPssKb` | {'int': 1768} |
| `kind` | {'str': 1768} |
| `memAvailableKb` | {'int': 1768} |
| `memTotalKb` | {'int': 1768} |
| `otherPssKb` | {'int': 1768} |
| `processes` | {'int': 1768} |
| `pssFallbackProcesses` | {'int': 1768} |

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
| `cpuMillicores` | {'int': 228} |
| `display` | {'int': 229} |
| `kind` | {'str': 229} |
| `processes` | {'int': 229} |
| `pssKb` | {'int': 229} |
| `rendererMaxPssKb` | {'int': 229} |
| `renderers` | {'int': 229} |
| `tabs` | {'int': 229} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

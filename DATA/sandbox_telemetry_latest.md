# sandbox_telemetry_parse — 2026-10-13 18:28:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1185626 lines=3083
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2307 |
| `chrome_profile_sample` | 768 |
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
| `chromeBrowserPssKb` | {'int': 2307} |
| `chromeGpuPssKb` | {'int': 2307} |
| `chromeOtherPssKb` | {'int': 2307} |
| `chromeProcesses` | {'int': 2307} |
| `chromeProfiles` | {'int': 2307} |
| `chromeRendererMaxPssKb` | {'int': 2307} |
| `chromeRendererPssKb` | {'int': 2307} |
| `chromeRenderers` | {'int': 2307} |
| `chromeTabs` | {'int': 2307} |
| `chromeTabsProbedProfiles` | {'int': 2307} |
| `chromeUtilityPssKb` | {'int': 2307} |
| `desktopPssKb` | {'int': 2307} |
| `hostPssKb` | {'int': 2307} |
| `kind` | {'str': 2307} |
| `memAvailableKb` | {'int': 2307} |
| `memTotalKb` | {'int': 2307} |
| `otherPssKb` | {'int': 2307} |
| `processes` | {'int': 2307} |
| `pssFallbackProcesses` | {'int': 2307} |

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
| `cpuMillicores` | {'int': 767} |
| `display` | {'int': 768} |
| `kind` | {'str': 768} |
| `processes` | {'int': 768} |
| `pssKb` | {'int': 768} |
| `rendererMaxPssKb` | {'int': 768} |
| `renderers` | {'int': 768} |
| `tabs` | {'int': 768} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

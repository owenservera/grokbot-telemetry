# sandbox_telemetry_parse — 2026-10-13 15:29:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1149220 lines=2969
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2250 |
| `chrome_profile_sample` | 711 |
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
| `chromeBrowserPssKb` | {'int': 2250} |
| `chromeGpuPssKb` | {'int': 2250} |
| `chromeOtherPssKb` | {'int': 2250} |
| `chromeProcesses` | {'int': 2250} |
| `chromeProfiles` | {'int': 2250} |
| `chromeRendererMaxPssKb` | {'int': 2250} |
| `chromeRendererPssKb` | {'int': 2250} |
| `chromeRenderers` | {'int': 2250} |
| `chromeTabs` | {'int': 2250} |
| `chromeTabsProbedProfiles` | {'int': 2250} |
| `chromeUtilityPssKb` | {'int': 2250} |
| `desktopPssKb` | {'int': 2250} |
| `hostPssKb` | {'int': 2250} |
| `kind` | {'str': 2250} |
| `memAvailableKb` | {'int': 2250} |
| `memTotalKb` | {'int': 2250} |
| `otherPssKb` | {'int': 2250} |
| `processes` | {'int': 2250} |
| `pssFallbackProcesses` | {'int': 2250} |

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
| `cpuMillicores` | {'int': 710} |
| `display` | {'int': 711} |
| `kind` | {'str': 711} |
| `processes` | {'int': 711} |
| `pssKb` | {'int': 711} |
| `rendererMaxPssKb` | {'int': 711} |
| `renderers` | {'int': 711} |
| `tabs` | {'int': 711} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
